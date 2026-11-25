cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4822"
  sha256 arm:   "b19aa3e909c5cac2f0c386bcc917296c6f3ff30e0e48935d3e447a67fb8b2f34",
         intel: "417359c187651f7d29dc025199af29fee79f244aca59aa8d1f83a1797ce70169"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
