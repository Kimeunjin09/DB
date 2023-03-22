-- SQL 한 줄 주석

/*SQL 범위 주석*/

-- 이런식으로 SQL주석 작성 시작!

-- 새로운 사용자 계정 생성 ! sys계정(최고관리자)으로 진행해야함

-- 오라클 11G 이전 버전의 SQL 작성을 가능하게 하는 구문.
ALTER SESSION SET "_ORACLE_SCRIPT" = TRUE;

-- SYS계정(최고관리자 권한, 계정생성, 역할권한 부여)에서 작성해야함
-- 계정 생성
CREATE USER kh IDENTIFIED BY kh1234;

-- C## : 일반 사용자(사용자계정을 의미)
-- CREATE USER C##kh IDENTIFIED BY kh1234;

-- 사용자 계정 권한 부여 설정
GRANT RESOURCE, CONNECT TO kh;

-- 객체가 생성될 수 있는 공간 할당량 지정
ALTER USER kh DEFAULT TABLESPACE SYSTEM QUOTA UNLIMITED ON SYSTEM;