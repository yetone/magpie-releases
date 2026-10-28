cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1967"
  sha256 arm:   "35a27942c373b22735e7f33dcaa026205b60bde8ffc2a716984742fafc3988a4",
         intel: "73f0eab8a8016b1970aa99e7eabb6725046788c627239aa1c6841f240040274d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
