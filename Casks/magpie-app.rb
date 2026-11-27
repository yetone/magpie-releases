cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4930"
  sha256 arm:   "b42b6904970830520bfacc1d7515f92c8356b0347ff8dff5841adcf00000aac9",
         intel: "397644fbd3807f39a0dcec2cdf6a091b1ea1af490bc8e52707bca1f7206c4545"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
