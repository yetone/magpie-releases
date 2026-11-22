cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4667"
  sha256 arm:   "9404da741115e1a1d95e33632ce285ce8d77f7c73f3c18d7845c6d236f3e00cf",
         intel: "b94e3f5a5f508bf4b1a63fefb9dfe27e68a0ed7f0af96b196f08228a2c45d64f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
