cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3821"
  sha256 arm:   "c774a77cee9f3f04aa899f77d6c1cbd10bd0644947c8a5a9c60e13ca53d3bba2",
         intel: "50df5cdfa710e1b8594585845d5c8213008f430279ed6980ab821fef87a71730"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
