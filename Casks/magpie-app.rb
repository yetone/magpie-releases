cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1030"
  sha256 arm:   "5f85a3ae7f1f15c6d7a1fd1fbd977658046faf414470f719ec807cdf97c93ca0",
         intel: "7907ce766f4bd7ed1368357a6eb1c0504b3b7fc42c644a51488b7ab96cca6bbe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
