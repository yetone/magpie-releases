cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2034"
  sha256 arm:   "5322db738ecc6bce9d5eccb0951cee23baa13170943c360bbbdc8189b7f28648",
         intel: "3408d01a0e7653efa4848a099fa19d93623705ae8790cfb34b0577e18ca01d45"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
