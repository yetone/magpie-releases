cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2892"
  sha256 arm:   "a1db6d6ea704023d53def99c060d91157d026a094d71f77059b6aa7c7e3de3a9",
         intel: "e449f05ca37e1a5b261741827e172e447c975b3787b9b7ee91939ebaeb2a3236"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
