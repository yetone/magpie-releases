cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3061"
  sha256 arm:   "4c7cdf36cca435b179e2c312f81800cd02901dd2fac0fc457001ab151a1e2fac",
         intel: "19fe79698fd973f6462698e328a8180fc66bd5f3654699f6258b4c01d7d4379a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
