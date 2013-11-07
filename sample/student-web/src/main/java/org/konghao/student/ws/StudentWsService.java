package org.konghao.student.ws;

import java.util.List;

import javax.inject.Inject;
import javax.jws.WebService;

import org.konghao.student.model.RewardPunish;
import org.konghao.student.model.Student;
import org.konghao.student.service.IRewardPunishService;
import org.konghao.student.service.IStudentService;

/**
 * 使用这种方式公布出来的服务，默认是不被Spring所管理的，所以依赖注入无法生效
 * @author Administrator
 *
 */
@WebService(endpointInterface="org.konghao.student.ws.IStudentWsService",
			serviceName="StudentWsService",
			targetNamespace="http://ws.student.konghao.org",
			portName="StudentWsServicePort",
			wsdlLocation="/WEB-INF/wsdl/student.wsdl")
public class StudentWsService implements IStudentWsService {
	
	private IStudentService studentService;
	private IRewardPunishService rewardPunishService;
	
	
	public IStudentService getStudentService() {
		return studentService;
	}
	@Inject
	public void setStudentService(IStudentService studentService) {
		this.studentService = studentService;
	}

	public IRewardPunishService getRewardPunishService() {
		return rewardPunishService;
	}
	@Inject
	public void setRewardPunishService(IRewardPunishService rewardPunishService) {
		this.rewardPunishService = rewardPunishService;
	}

	@Override
	public Student getStudent(String xh) {
		System.out.println(xh);
		Student stu = studentService.getStudentByXh(xh);
		return stu;
	}

	@Override
	public List<RewardPunish> listRpByStu(String xh) {
		return rewardPunishService.listRewardPunishByStuXh(xh);
	}

	@Override
	public List<Student> listRewardStu(int year, String semester) {
		return studentService.listRewardStu(year, semester);
	}

	@Override
	public List<Student> listPunishStu(int year, String semester) {
		return studentService.listPunishStu(year, semester);
	}

}