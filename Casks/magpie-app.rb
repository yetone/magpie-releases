cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3692"
  sha256 arm:   "9db14fcd7db0a90314391d8e2b1caf94f6a00c59d358e22b4e10de253a606927",
         intel: "3ca340d15231bfed9ac3f1bd371bf41b39cc450dcb23ffedd57db965fb319366"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
