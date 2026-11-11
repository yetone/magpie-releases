cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3663"
  sha256 arm:   "614777d2d7e90d660c21271bd2238e4d19bcae68ebb5e0c3758fea946527aa3f",
         intel: "b9d1675213ee6c530f0409a8fb7d5f7284df0d3c25106336152231e5951eac28"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
