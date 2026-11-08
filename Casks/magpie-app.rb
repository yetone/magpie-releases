cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3337"
  sha256 arm:   "5ea0fad089a1793bdcba8d80e473f8050291b7892ff35fede642170ffcb4531e",
         intel: "7dac925c42679eea9908343d6919a8c28da464f29f3690aa40d317b6fe84df24"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
