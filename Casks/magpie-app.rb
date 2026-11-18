cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4486"
  sha256 arm:   "e411d5fb7d7c26e5e127a2dd34233f4b2a88813a550dcbb24335cbcc6d48ff82",
         intel: "33d2b7dccc37b5db81342565c758c4c52fd61f76078eb81bb3f55289b0ea3c3c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
