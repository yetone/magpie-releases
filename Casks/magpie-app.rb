cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4495"
  sha256 arm:   "a0e895c8e9707df661a8e1df41aa74d258ce675fcfec78a1e8aca2f52bdeabf6",
         intel: "6f066ca9f9536bb3fb5be5cf293d4bd9063ab984a14d576414115bd9baac2ecf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
