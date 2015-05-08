# A rake task to build all packages in a folder
 
  desc "Build the nuget packages"
  task :package do
    FileList["*.nuspec"].each do |spec|
      sh "nuget pack #{spec} -Version #{ENV["APPVEYOR_BUILD_VERSION"]}"
    end
  end