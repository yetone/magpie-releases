cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.130"
  sha256 arm:   "3561f14e81b76814c8a95eb0458318b9c93a8cc118b9e4d0ed62eeed3b773c8c",
         intel: "48f2084f3c0682c214f738976f08bfa7747d20025330a97e2b16362512060ead"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
