cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4359"
  sha256 arm:   "59bca1b443be8983c90be5ee509fffe90ae1374b5fc2da254ec636f46bd09213",
         intel: "845923e4c2071970e3216cd89610fe941dac19e5852987392df1dee9f4b18b11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
