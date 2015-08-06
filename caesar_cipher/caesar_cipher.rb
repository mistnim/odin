#!/usr/bin/env ruby

def caesar_char char, shift
  return char unless char =~ /[a-zA-Z]/
  dist = 26
  base = (char.ord < 'a'.ord) ? 'A'.ord : 'a'.ord
  ((((char.ord - base) + shift) % dist) + base).chr
end

def caesar_cipher str, shift
  str = str.chars.map { |c| caesar_char c, shift }.join("")
end

puts caesar_cipher "what a string!", 5
