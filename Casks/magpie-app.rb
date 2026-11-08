cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3347"
  sha256 arm:   "24af0a32452311eedc3f8784a75cbcd464385a38965e81959baa0a319fff29dd",
         intel: "8389a37a796c131e01c6ad69db1e8d9061e7b5e541352b86803974c20f74e70e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
