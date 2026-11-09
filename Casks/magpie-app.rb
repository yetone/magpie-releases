cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3363"
  sha256 arm:   "8f4af93d0a87bdfa9db57b6489fe282b5b15a765a4e2560fc2bb73ea7cab36c2",
         intel: "069f36ead32d093ac2c94e67429619f7dd7731b4b21f5b262775fde84b2820f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
