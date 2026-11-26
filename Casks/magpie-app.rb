cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4848"
  sha256 arm:   "7b6cf6875272fac1607ac1c5d2da16fa7061fbe75e007285568ac53cde3038f8",
         intel: "28c1f34c4e64a5243f317919cd4adf8d555a6028ba6e0a205c46133aaa77feed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
