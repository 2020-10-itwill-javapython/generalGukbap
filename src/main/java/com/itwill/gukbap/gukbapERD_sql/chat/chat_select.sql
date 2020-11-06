/*특정 시간대 이전의 모든 채팅 목록*/
SELECT * FROM chat WHERE chatTime < '2020.11.06 18:03' ORDER BY chatTime;


/*최근 열개*/
SELECT * FROM chat WHERE chatID > (SELECT MAX(chatID) - 10 FROM chat) ORDER BY chatTime;


/*특정 채팅 번호 이후의 모든 채팅 목록*/
SELECT * FROM CHAT WHERE chatID > 1 ORDER BY chatTime;
	