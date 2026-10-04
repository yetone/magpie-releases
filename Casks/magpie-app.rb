cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.924"
  sha256 arm:   "212df6d17545c180e2d025b4809e4e78468141df9d556b4f58470d6d59fc0744",
         intel: "bc1bb2b2c35800cd943c75e343c0ce59bd999e843cd72acdef3602fbdf1e489f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
