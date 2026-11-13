cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4071"
  sha256 arm:   "c7fb2f97a1a6843968391db6730b542ae35a19eb28b5eae35a5299bb0fdc64fc",
         intel: "9fda9a5e1d17da270dd2ccfe08208d9d627b0cb28d3426d319cda568bd47b2b3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
