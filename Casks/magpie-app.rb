cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2475"
  sha256 arm:   "1dfdcd3369d6ad86814769fe3c0d6e8667e39f52525c3ec2320ebfaccfa75e73",
         intel: "5e088de771bf38db94d1f26bd55a9211e23b108a75954ca8f8cc79b22f54d437"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
