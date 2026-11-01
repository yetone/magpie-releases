cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.2576"
  sha256 arm:   "9f1c2e8d13f00a1399c1ea3a645822d289231b66c89e5ea478e0021a8aa89d2e",
         intel: "efb402b6e719098de450bd61b316f6dfb9c72d5278894b97b872a6a3570ed8da"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
