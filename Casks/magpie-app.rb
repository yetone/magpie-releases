cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4320"
  sha256 arm:   "e10555fb7016ad6014f9c0b53663845f3f03522db475ddbff0e8a1f22d9db23e",
         intel: "38ed87d5cabd1f03d15d545a0ac66a53a2dbfbc3d9a5eb341e6b48a0ec202fbe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
