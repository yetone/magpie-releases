cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3404"
  sha256 arm:   "6967757e4439dfaeeb5799a685fdd0b48dcbc72666afee3425578f3f03a47893",
         intel: "ef801b7cf373a402b426c137b7e9061c263ea8a812d8f234d3348a31c0fc217a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
