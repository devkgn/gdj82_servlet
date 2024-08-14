package com.gn.spring.chat.domain;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
import jakarta.persistence.Table;
import lombok.AccessLevel;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;

@Entity
@Table(name="chat_msg")
@NoArgsConstructor(access=AccessLevel.PROTECTED)
@AllArgsConstructor(access=AccessLevel.PROTECTED)
@Getter
@Builder
public class ChatMsg {

	@Id
	@Column(name="chat_no")
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	private Long chatNo;
	
	@Column(name="chat_content")
	private String chatContent;
	
	@Column(name="is_from_sender")
	private String isFromSender;
	
	@Column(name="is_receiver_read")
	private String isReceiverRead;
	
	@Column(name="send_date")
	@CreationTimestamp
	private LocalDateTime sendDate;
	
	@ManyToOne
	@JoinColumn(name="room_no")
	private ChatRoom chatRoom;

}
