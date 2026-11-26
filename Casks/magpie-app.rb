cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4904"
  sha256 arm:   "26693048b8edf782c050a45e866f108086be13bb216240c0186f517481ce0821",
         intel: "68ec46496792d2656944f5ad20989d6da3d63eaa22ec60c04d0f67b7a8879463"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
