cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2243"
  sha256 arm:   "d7bc25fb631e27e2252679f26a0f27b9d03cbd3adb89eb314d2f3db82d432bc1",
         intel: "abe5b3734a7437b2a2892851f0a887c8f809525862fd1dc63cfc7885cfcd7c70"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
