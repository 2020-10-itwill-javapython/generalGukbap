package com.itwill.gukbap.service;


import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.itwill.gukbap.domain.AddressDomain;
import com.itwill.gukbap.domain.UserAddressDomain;
import com.itwill.gukbap.domain.UserDomain;
import com.itwill.gukbap.exception.ExistedUserExecption;
import com.itwill.gukbap.exception.PasswordMismatchException;
import com.itwill.gukbap.exception.UserNotFoundException;
import com.itwill.gukbap.repository.AddressRepository;
import com.itwill.gukbap.repository.UserAddressRepository;
import com.itwill.gukbap.repository.UserRepository;

@Service
public class UserServiceImpl implements UserService {
	
	@Autowired
	private UserRepository userRepository;
	@Autowired
	private AddressRepository addressRepository;
	@Autowired
	private UserAddressRepository userAddressRepository;
	
	@Override
	public int registerNewUser(UserDomain user, AddressDomain address) throws ExistedUserExecption {
		if (userRepository.isExistedUser(user.getUser_id())) {
			throw new ExistedUserExecption("중복된 아이디 입니다.");
		}
		addressRepository.insertAddress(address);
		userRepository.insertUser(user);
		return userAddressRepository.
				map_user_with_address(
						new UserAddressDomain(user.getUser_id(),
											  addressRepository.selectCurrentNo()));
	}
	
	@Override
	public UserDomain login(String user_id, String password) throws Exception {
		UserDomain loginUser = userRepository.selectUserById(user_id);
		
		if (loginUser == null) {
			throw new UserNotFoundException("존재하지 않는 아이디 입니다.");
		}
		
		if (!loginUser.isMatchPassword(password)) {
			throw new PasswordMismatchException("비밀번호가 일치하지 않습니다.");
		}
		
		return loginUser;
	}
	
	@Override
	public List<UserDomain> selectAll() {
		return userRepository.selectAll();
	}
	
	@Override
	public UserDomain selectUserById(String user_id) {
		return userRepository.selectUserById(user_id);
	}
	
	@Override
	public int updateUserInfo(UserDomain user) {
		return userRepository.updateUser(user);
	}
	
	@Override
	public int deleteUser(String user_id) {
		List<AddressDomain> addresses = userRepository.selectUserById(user_id).getAddresses();
		Set<Integer> addressNumbers = new HashSet<Integer>();
		
		for (AddressDomain addressDomain : addresses) {
			addressNumbers.add(addressDomain.getAddress_no());
		}
		
		userAddressRepository.delete_all_address(user_id);
		for (Integer integer : addressNumbers) {
			addressRepository.deleteAddress(integer.intValue());
		}
		return userRepository.deleteUser(user_id);
	}
}
