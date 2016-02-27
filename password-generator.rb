#!/usr/bin/env ruby

require 'random-word';

def generate_password(separator, digits)
  password = '';

  password += RandomWord.adjs.next
  password += separator

  password += RandomWord.nouns.next
  password += separator

  digits.times do
    password += rand(10).to_s
  end

  return password
end

password = generate_password('.', 2)
puts password
