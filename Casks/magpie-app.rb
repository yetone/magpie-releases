cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2018"
  sha256 arm:   "1a22dad16279468595f0682b0f52401c166db8712858c28108712fc2e12c2a58",
         intel: "24d5572be612c1da366d85bed0a120642d5531c5940c6533703a95338fbc0d68"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
