cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4899"
  sha256 arm:   "ddcabb7506b97cafa110662e5c9347cf1301e29d90ec342bceda4316bf52ee74",
         intel: "4415df6de53c3bc3413bc6b96a27e79d7bfa3f5d98c1fc0b8b620d44c5149e05"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
