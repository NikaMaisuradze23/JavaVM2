package com.example.student;

import java.util.ArrayList;
import java.util.List;

public class StudentUtils {

    private static StudentUtils instance;

    private StudentUtils(){}

    synchronized public static StudentUtils getInstance() {
        if (instance == null) {
            instance = new StudentUtils();
        }
        return instance;
    }

    private final List<Student> studentList = new ArrayList<>();

    public List<Student> getStudentList() {
        return studentList;
    }
}

