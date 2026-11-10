cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3487"
  sha256 arm:   "cc719fcbd37311b60ebd43ff371db6cc17294ef31b1b7f263ec57a6abb4a9293",
         intel: "395da69512c56baf4d892c6d258722fabc7684a37c12c11d725f4339a529d7d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
