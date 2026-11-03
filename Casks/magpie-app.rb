cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2782"
  sha256 arm:   "586fbd54c93bab9546be9789cdd3626026295739a4475722058451234a2eeb36",
         intel: "1b0663b98e40a8822e68bfca4c80b592d4e1283faae6a3e3c3be6c0986c4f44c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
