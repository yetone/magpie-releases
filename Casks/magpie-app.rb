cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2345"
  sha256 arm:   "904b3c995ffcde47eab94a0e45161954ef005b5ebe5de74300fa793d01a1c20c",
         intel: "f171dc1ded2014b3fc30fb0d125d1beee6e0f669b6b4a355e858d56b10556558"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
