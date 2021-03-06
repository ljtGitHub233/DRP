package com.drp.pojo;

import com.fasterxml.jackson.annotation.JsonFormat;
import org.springframework.format.annotation.DateTimeFormat;

import java.io.Serializable;
import java.util.Date;
import java.util.HashSet;
import java.util.Set;

import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

/**
 * @author 刘江涛
 * @ClassName: User
 * @Description: 实体：用户
 * @date 2017年11月7日 上午11:48:37
 */
@Entity
@Table(name = "t_user")
public class User implements Serializable {

    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Integer uId;        //用户主键
    @Column(length = 40, nullable = false)

    private String userName;    //用户名

    @Column(length = 20, nullable = false)
    private String userPassword;//用户密码

    @Column(length = 20)
    private String userTel;      //用户手机号

    @Column(length = 30)
    private String userEmail;    //用户邮箱

    @Column(length = 10, nullable = false)
    private String userCode;    //用户代码

    @Temporal(TemporalType.TIMESTAMP)
    private Date createDate;    //创建时间示例2017年11月11日 13:11:11.0

    @OneToOne(mappedBy = "user")
    private Item items;

    public User() {
    }

    public User(Integer uId, String userName, String userPassword, String userTel, String userEmail, String userCode,
                Date createDate) {
        super();
        this.uId = uId;
        this.userName = userName;
        this.userPassword = userPassword;
        this.userTel = userTel;
        this.userEmail = userEmail;
        this.userCode = userCode;
        this.createDate = createDate;
    }

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUserPassword() {
        return userPassword;
    }

    public void setUserPassword(String userPassword) {
        this.userPassword = userPassword;
    }

    public String getUserTel() {
        return userTel;
    }

    public void setUserTel(String userTel) {
        this.userTel = userTel;
    }

    public String getUserEmail() {
        return userEmail;
    }

    public void setUserEmail(String userEmail) {
        this.userEmail = userEmail;
    }

    public String getUserCode() {
        return userCode;
    }

    public void setUserCode(String userCode) {
        this.userCode = userCode;
    }

    public Date getCreateDate() {
        return createDate;
    }

    public void setCreateDate(Date createDate) {
        this.createDate = createDate;
    }

    public Item getItems() {
        return items;
    }

    public void setItems(Item items) {
        this.items = items;
    }


    @Override
    public String toString() {
        return "User{" +
                "uId=" + uId +
                ", userName='" + userName + '\'' +
                ", userPassword='" + userPassword + '\'' +
                ", userTel='" + userTel + '\'' +
                ", userEmail='" + userEmail + '\'' +
                ", userCode='" + userCode + '\'' +
                ", createDate=" + createDate +
                ", items=" + items +
                '}';
    }
}
