cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3652"
  sha256 arm:   "9b1a85e3c21735c59a0822acb84c223515c026fa3f4dbb2cd0abd24c5ddd7310",
         intel: "58d4e47decceb8ae1343ed2eb4d1149b10d6412834a380d04915fe14f5cba5cf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
