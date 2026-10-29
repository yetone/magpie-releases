cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1986"
  sha256 arm:   "24d221318ae4aa6ff9efcd1fde34da3377ff0b195b8746900a7bb4abb707e271",
         intel: "56d8ebd73cd65c5b3e5fb8ddafba92079c80408a9c3012d9aa89f040042403d1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
