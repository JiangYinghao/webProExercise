package cn.jyh.webProExercise;

import org.apache.log4j.Logger;

public class LoggerTest {

	public static void main(String[] args) throws Exception {
		for (int i = 10; i < 200000; i++) {
			logRecord();

		}
	}

	public static void logRecord() {
		Logger log = Logger.getLogger(LoggerTest.class);
		new Thread(new Runnable() {

			@Override
			public void run() {
				log.info("jyh_info");
				log.error("jyh_error");
				log.warn("jyh_warn");
				log.debug("jyh_debug");
			}

		}).start();
	}

}
