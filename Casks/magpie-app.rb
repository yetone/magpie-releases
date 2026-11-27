cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4960"
  sha256 arm:   "7a934b9f87b21b19b918e3d16347f2be2b202165ea2f504ce3772f08eda9270f",
         intel: "7d51e6eba8f3a9d59cd6e03a9f9ccba6f46830f48aacd88ac8cd127f49995782"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
