
package org.konghao.student.ws;

import java.util.List;

import javax.jws.WebMethod;
import javax.jws.WebParam;
import javax.jws.WebResult;
import javax.jws.WebService;
import javax.xml.ws.RequestWrapper;
import javax.xml.ws.ResponseWrapper;

import org.konghao.student.model.RewardPunish;
import org.konghao.student.model.Student;


/**
 * This class was generated by the JAX-WS RI.
 * JAX-WS RI 2.1.3-b02-
 * Generated source version: 2.1
 * 
 */
@WebService(name = "IStudentWsService", targetNamespace = "http://ws.student.konghao.org")
public interface IStudentWsService {


    /**
     * 
     * @param xh
     * @return
     *     returns org.konghao.student.ws.Student
     */
    @WebMethod
    @WebResult(name = "student", targetNamespace = "")
    @RequestWrapper(localName = "getStudent", targetNamespace = "http://ws.student.konghao.org")
    @ResponseWrapper(localName = "getStudentResponse", targetNamespace = "http://ws.student.konghao.org")
    public Student getStudent(
        @WebParam(name = "xh", targetNamespace = "")
        String xh);

    /**
     * 
     * @param xh
     * @return
     *     returns java.util.List<org.konghao.student.ws.RewardPunish>
     */
    @WebMethod
    @WebResult(name = "rp", targetNamespace = "")
    @RequestWrapper(localName = "listRpByStu", targetNamespace = "http://ws.student.konghao.org")
    @ResponseWrapper(localName = "listRpByStuResponse", targetNamespace = "http://ws.student.konghao.org")
    public List<RewardPunish> listRpByStu(
        @WebParam(name = "xh", targetNamespace = "")
        String xh);

    /**
     * 
     * @param year
     * @param semester
     * @return
     *     returns java.util.List<org.konghao.student.ws.Student>
     */
    @WebMethod
    @WebResult(name = "stus", targetNamespace = "")
    @RequestWrapper(localName = "listRewardStu", targetNamespace = "http://ws.student.konghao.org")
    @ResponseWrapper(localName = "listRewardStuResponse", targetNamespace = "http://ws.student.konghao.org")
    public List<Student> listRewardStu(
        @WebParam(name = "year", targetNamespace = "")
        int year,
        @WebParam(name = "semester", targetNamespace = "")
        String semester);

    /**
     * 
     * @param year
     * @param semester
     * @return
     *     returns java.util.List<org.konghao.student.ws.Student>
     */
    @WebMethod
    @WebResult(name = "stus", targetNamespace = "")
    @RequestWrapper(localName = "listPunishStu", targetNamespace = "http://ws.student.konghao.org")
    @ResponseWrapper(localName = "listPunishStuResponse", targetNamespace = "http://ws.student.konghao.org")
    public List<Student> listPunishStu(
        @WebParam(name = "year", targetNamespace = "")
        int year,
        @WebParam(name = "semester", targetNamespace = "")
        String semester);

}
