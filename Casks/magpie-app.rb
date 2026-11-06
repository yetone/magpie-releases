cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3081"
  sha256 arm:   "c65fed8cdac33a5169d51b244ed3017a7bbc32a1e965cc9d9257508336cc86c8",
         intel: "91bb3eb58405ccf9ae0edff3ee84d015a47e42b1f8bbc398c9d7cdf943bc4071"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
