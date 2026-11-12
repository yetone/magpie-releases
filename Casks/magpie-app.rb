cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3917"
  sha256 arm:   "972238983a21abb67ea0c20db9e953cd5314896bb13309a2cf1f493660d1f222",
         intel: "f737f4dc61efe3bf6461d6601c2a3439d20b2b8b7b4da4d400e5386a5b59a091"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
