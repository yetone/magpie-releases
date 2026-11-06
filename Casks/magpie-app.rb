cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.3134"
  sha256 arm:   "1bf6227639d43814b908bef5390925f745b7a0e9cd5e49a7b3f690a84b22f104",
         intel: "2d2412bb2562c59784f630f08c094e611186ca12b01a313f78437014282b0404"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
