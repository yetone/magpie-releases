cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4685"
  sha256 arm:   "5e24ab2c794167f77268077927f5147631afbc0af972d210f12d0f1991510434",
         intel: "ae52923d7cf4cd53f284f9c6dbe3e6d1d4960164a5b73e0fdb53342c1366eabb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
