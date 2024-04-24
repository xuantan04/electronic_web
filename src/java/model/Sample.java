/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;

/**
 *
 * @author lexua
 */
public class Sample {
    private int id;
    private String name, content, summary, label;

    public Sample(int id, String name, String content, String summary, String label) {
        this.id = id;
        this.name = name;
        this.content = content;
        this.summary = summary;
        this.label = label;
    }

    public int getId() {
        return id;
    }

    public String getName() {
        return name;
    }

    public String getContent() {
        return content;
    }

    public String getSummary() {
        return summary;
    }

    public String getLabel() {
        return label;
    }
    
    
}
