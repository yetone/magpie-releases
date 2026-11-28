cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.5036"
  sha256 arm:   "f9727e4d0f5127e02e7c174a8a13b588f1f397c7f23548d824d687531f19e3bd",
         intel: "9eed9bcc3858820b826764cf243e8697b3c4b1d3ef4bfe93ba260ab2220eae69"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
