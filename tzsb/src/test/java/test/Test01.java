package test;

import java.io.File;

import org.apache.commons.io.FileUtils;
import org.junit.Test;

public class Test01 {
	@Test
	public void test01(){
		try {
			File srcFile = new File("/Users/wanglj/workspaces/lstzsb_workspace/tzsb/src/main/webapp/aaa.jpg");
			File destFile = new File("/Users/wanglj/Desktop/a/b/c/aaa.jpg");
			FileUtils.copyFile(srcFile, destFile);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
