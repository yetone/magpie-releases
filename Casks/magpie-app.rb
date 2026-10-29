cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2042"
  sha256 arm:   "a97cb1ca0364812b3d3c7652fc1849060386961d3139b259fce6724c99ff09af",
         intel: "10ac587196977b9105966606cc4204b836ec9ad2a8d8b55556be5eac6f1fa102"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
