cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2396"
  sha256 arm:   "4d3443b071c2234d70894f65997adf916d661a2143a7bedc460de02231c05c6d",
         intel: "78a1250dea672d8ee7ab8b763da03d1f0913feda94e230410a8844ec7028c48f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
