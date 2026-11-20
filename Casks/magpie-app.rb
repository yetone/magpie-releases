cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.4615"
  sha256 arm:   "c833eb863e2729fae96caa6617ccdd77eda0e68989b8b43eb3843f3ae7c869f7",
         intel: "faa32dd1387149768d8e260edea3aab7a10b04fc16938c9a49187977ea263871"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
