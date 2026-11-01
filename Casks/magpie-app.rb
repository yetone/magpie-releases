cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2611"
  sha256 arm:   "2a3fa519fa50ea78ebc3bc0383a0bf7e2ddb4a030f18324aca4fe5d3d41501fa",
         intel: "6b4e581ed4da23874a99e5b790572e3e918e8df3971f974ef6a2cebefc798151"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
