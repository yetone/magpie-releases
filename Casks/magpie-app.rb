cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2682"
  sha256 arm:   "fa126c37724e3b7fc46bf4a1737118ddbda7bfcbb1e6ab55012d92457014fa39",
         intel: "246b238f298ddb6ea59daf08227b7b9f14ba80604c231068c1f89cab68bcc1ed"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
