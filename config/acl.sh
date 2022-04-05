#!/usr/bin/ruby

user= `git config user.name`
puts user
access = {}
access["yt269589"] = ".gitConfig"
puts access

def check_directory_perms
  files_modified = `git diff-index --cached --name-only HEAD`.split("\n")
  puts files_modified
  files_modified.each do |path|
    next if path.size == 0
    has_file_access = false
    access[$user].each do |access_path|
    if !access_path || (path.index(access_path) == 0)
      has_file_access = true
    end
    if !has_file_access
      puts "[POLICY] You do not have access to push to #{path}"
      exit 1
    end
  end
end

check_directory_perms()

