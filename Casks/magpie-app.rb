cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4299"
  sha256 arm:   "20d13488254fefb2323785cf5b1a1467b12b6effa343273f187fc6b02b5873f6",
         intel: "63cf73d28ca7839c00c0408da146bf1b29eb589441b5c3931174709d2fdcfdad"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
